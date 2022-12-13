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

# 第1/2/3个无人机下降
client.moveToZAsync(-6, 1, vehicle_name="UAV1")
client.moveToZAsync(-6, 1, vehicle_name="UAV2")
client.moveToZAsync(-6, 1, vehicle_name="UAV3")
time.sleep(1)

# # 第9个无人机起飞
client.moveToPositionAsync(2, 0, -6, 3, vehicle_name="UAV9")
# # 第8个无人机起飞
client.moveToPositionAsync(0, 2, -6, 2, vehicle_name="UAV8")
# # 第7个无人机起飞
client.moveToPositionAsync(-2, 0, -6, 1, vehicle_name="UAV7")

# # 第4个无人机起飞
client.moveToPositionAsync(-2, 0, -6, 3, vehicle_name="UAV4")
# # 第5个无人机起飞
client.moveToPositionAsync(0, -2, -6, 2, vehicle_name="UAV5")
# # 第6个无人机起飞
client.moveToPositionAsync(2, 0, -6, 1, vehicle_name="UAV6")

# # 第1个无人机起飞
client.moveToPositionAsync(-2, 0, -6, 3, vehicle_name="UAV1")
# # 第2个无人机起飞
client.moveToPositionAsync(0, 0, -6, 2, vehicle_name="UAV2")
# # 第3个无人机起飞
client.moveToPositionAsync(2, 0, -6, 1, vehicle_name="UAV3")

# for i in range(9):
#     name = "UAV" + str(i + 1)
#     client.landAsync(vehicle_name=name)  # land
#     client.armDisarm(False, vehicle_name=name)  # lock
#     client.enableApiControl(False, vehicle_name=name)  # release control
