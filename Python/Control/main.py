"""
square flight
"""
import airsim
import time

# connect to the AirSim simulator
client = airsim.MultirotorClient()

for i in range(9):
    name = "UAV" + str(i + 1)
    client.enableApiControl(True, vehicle_name=name)  # get control
    client.armDisarm(True, vehicle_name=name)  # unlock
    client.takeoffAsync(vehicle_name=name)  # takeoff


for i in range(9):
    name = "UAV" + str(i + 1)
    client.moveToZAsync(-5, 1, vehicle_name=name)  # 上升到10m高度

# square flight
client.moveToZAsync(-8, 1, vehicle_name="UAV1").join()  # 上升到15m高度
client.moveToPositionAsync(5, 0, -8, 1, vehicle_name="UAV1").join()  # 飞到（5,0）点坐标
client.moveToPositionAsync(5, 5, -8, 1, vehicle_name="UAV1").join()  # 飞到（5,5）点坐标
client.moveToPositionAsync(0, 5, -8, 1, vehicle_name="UAV1").join()  # 飞到（0,5）点坐标
client.moveToPositionAsync(0, 0, -8, 1, vehicle_name="UAV1").join()  # 回到（0,0）点坐标
client.moveToZAsync(-5, 1, vehicle_name="UAV1").join()  # 上升到15m高度


# for i in range(9):
#     name = "UAV" + str(i + 1)
#     client.landAsync(vehicle_name=name)  # land
#     client.armDisarm(False, vehicle_name=name)  # lock
#     client.enableApiControl(False, vehicle_name=name)  # release control
