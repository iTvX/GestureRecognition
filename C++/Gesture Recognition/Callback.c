#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "LeapC.h"
#include "Connection.h"

bool grab = true;
bool release = true;
bool finger1 = true;
bool finger2 = true;
bool finger3 = true;
int i = 0;

static LEAP_CONNECTION* connectionHandle;

/** Callback for when the connection opens. */
static void OnConnect(void){
    printf("Connected.\n");
}

/** Callback for when a device is found. */
static void OnDevice(const LEAP_DEVICE_INFO *props){
    printf("Found device %s.\n", props->serial);
}

/** Callback for when a frame of tracking data is available. */
static void OnFrame(const LEAP_TRACKING_EVENT *frame){
    i++;
    if ( i % 800 == 0) {
        grab = true;
        release = true;
        finger1 = true;
        finger2 = true;
        finger3 = true;
    }
//    if (frame->info.frame_id % 60 == 0)
//
//        printf("Frame %lli with %i hands.\n", (long long int)frame->info.frame_id, frame->nHands);


    for(uint32_t h = 0; h < frame->nHands; h++){
        LEAP_HAND* hand = &frame->pHands[h];

//      system("py C:/Users/zijie/Desktop/1.py");
//      if(hand->type == eLeapHandType_Left){
//          system("py C:/Users/zijie/Desktop/1.py");
//      }
//    if(hand->type == eLeapHandType_Left ) {
//        if (grab == true) {
//            if (hand ->grab_strength == 1) {
//
//                grab = false;
//            } else if (hand -> grab_strength == 0) {
//                system("py C:\\Users\\zijie\\PycharmProjects\\pythonProject4\\one.py");
//                release = false;
//            }
//        }
//    }


//
//        if (release == true) {
//            if (hand -> type == eLeapHandType_Left) {
//                if (hand -> grab_strength == 0) {
//                    system("py C:/Users/zijie/Desktop/GestureRecognition/Python/Control/Reverse.py");
//                    release = false;
//                }
//            }
//        }

//        if (hand -> pinch_strength == 1) {
//            printf("123123");
//        }


        if (release == true) {
            if (hand -> type == eLeapHandType_Right) {
                if (hand -> grab_strength == 0) {
                    system("py C:/Users/zijie/Desktop/GestureRecognition/Python/Control/diffusion.py");
                    printf("this is diffusion\n");
                    release = false;
                }
            }
        }

    if (finger1 == true) {
        if(hand->type == eLeapHandType_Left ) {
            if (!hand->thumb.is_extended && hand->index.is_extended && !hand->middle.is_extended &&
                !hand->ring.is_extended && !hand->pinky.is_extended) {
                system("py C:/Users/zijie/Desktop/GestureRecognition/Python/Control/one.py");
                printf("this is finger 1\n");
                finger1 = false;
            }
        }
    }

    if (finger2 == true) {
        if(hand->type == eLeapHandType_Left ) {
            if (!hand->thumb.is_extended && !hand->index.is_extended && hand->middle.is_extended &&
                hand->ring.is_extended && hand->pinky.is_extended) {
                system("py C:/Users/zijie/Desktop/GestureRecognition/Python/Control/Two.py");
                printf("this is ok sign\n");
                finger2 = false;
            }
        }
    }

        if (grab == true) {
            if (hand -> type == eLeapHandType_Right) {
                if (hand -> grab_strength == 1) {
                    system("py C:/Users/zijie/Desktop/GestureRecognition/Python/Control/Reverse.py");
                    printf("this is grab\n");
                    grab = false;
                }
            }
        }












//    printf("    Hand id %i is a %s hand with position (%f, %f, %f).\n",
//                hand->id,
//                (hand->type == eLeapHandType_Left ? "left" : "right"),
//                hand->palm.position.x,
//                hand->palm.position.y,
//                hand->palm.position.z);
    }
}

static void OnImage(const LEAP_IMAGE_EVENT *image){
    printf("Image %lli  => Left: %d x %d (bpp=%d), Right: %d x %d (bpp=%d)\n",
           (long long int)image->info.frame_id,
           image->image[0].properties.width,image->image[0].properties.height,image->image[0].properties.bpp*8,
           image->image[1].properties.width,image->image[1].properties.height,image->image[1].properties.bpp*8);
}

static void OnLogMessage(const eLeapLogSeverity severity, const int64_t timestamp,
                         const char* message) {
    const char* severity_str;
    switch(severity) {
        case eLeapLogSeverity_Critical:
            severity_str = "Critical";
            break;
        case eLeapLogSeverity_Warning:
            severity_str = "Warning";
            break;
        case eLeapLogSeverity_Information:
            severity_str = "Info";
            break;
        default:
            severity_str = "";
            break;
    }
    printf("[%s][%lli] %s\n", severity_str, (long long int)timestamp, message);
}

static void* allocate(uint32_t size, eLeapAllocatorType typeHint, void* state) {
    void* ptr = malloc(size);
    return ptr;
}

static void deallocate(void* ptr, void* state) {
    if (!ptr)
        return;
    free(ptr);
}

void OnPointMappingChange(const LEAP_POINT_MAPPING_CHANGE_EVENT *change){
    if (!connectionHandle)
        return;

    uint64_t size = 0;
    if (LeapGetPointMappingSize(*connectionHandle, &size) != eLeapRS_Success || !size)
        return;

    LEAP_POINT_MAPPING* pointMapping = (LEAP_POINT_MAPPING*)malloc((size_t)size);
    if (!pointMapping)
        return;

    if (LeapGetPointMapping(*connectionHandle, pointMapping, &size) == eLeapRS_Success &&
        pointMapping->nPoints > 0) {
        printf("Managing %u points as of frame %lld at %lld\n", pointMapping->nPoints, (long long int)pointMapping->frame_id, (long long int)pointMapping->timestamp);
    }
    free(pointMapping);
}

void OnHeadPose(const LEAP_HEAD_POSE_EVENT *event) {
    printf("Head pose:\n");
    printf("    Head position (%f, %f, %f).\n",
           event->head_position.x,
           event->head_position.y,
           event->head_position.z);
    printf("    Head orientation (%f, %f, %f, %f).\n",
           event->head_orientation.w,
           event->head_orientation.x,
           event->head_orientation.y,
           event->head_orientation.z);
    printf("    Head linear velocity (%f, %f, %f).\n",
           event->head_linear_velocity.x,
           event->head_linear_velocity.y,
           event->head_linear_velocity.z);
    printf("    Head angular velocity (%f, %f, %f).\n",
           event->head_angular_velocity.x,
           event->head_angular_velocity.y,
           event->head_angular_velocity.z);
}

int main(int argc, char** argv) {
    //Set callback function pointers
    ConnectionCallbacks.on_connection          = &OnConnect;
    ConnectionCallbacks.on_device_found        = &OnDevice;
    ConnectionCallbacks.on_frame               = &OnFrame;
    ConnectionCallbacks.on_image               = &OnImage;
    ConnectionCallbacks.on_point_mapping_change = &OnPointMappingChange;
    ConnectionCallbacks.on_log_message         = &OnLogMessage;
    ConnectionCallbacks.on_head_pose           = &OnHeadPose;

    connectionHandle = OpenConnection();
    {
        LEAP_ALLOCATOR allocator = { allocate, deallocate, NULL };
        LeapSetAllocator(*connectionHandle, &allocator);
    }
    LeapSetPolicyFlags(*connectionHandle, eLeapPolicyFlag_Images | eLeapPolicyFlag_MapPoints, 0);

    printf("Press Enter to exit program.\n");
    getchar();

    CloseConnection();
    DestroyConnection();

    return 0;
}
//End-of-Sample
