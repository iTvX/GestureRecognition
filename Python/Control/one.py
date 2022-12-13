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

# # 第7个无人机起飞

client.moveToZAsync(-8, 3, vehicle_name="UAV7")
client.moveToPositionAsync(-6, -3, -8, 3, vehicle_name="UAV7")

# # 第8个无人机起飞
time.sleep(0.5)
client.moveToZAsync(-8, 2, vehicle_name="UAV8")
client.moveToPositionAsync(-6, -2, -8, 2, vehicle_name="UAV8")

# # 第9个无人机起飞
time.sleep(0.5)
client.moveToZAsync(-8, 1, vehicle_name="UAV9")
client.moveToPositionAsync(-6, -3, -8, 1, vehicle_name="UAV9")

# # 第6个无人机起飞
client.moveToZAsync(-8, 3, vehicle_name="UAV6")
client.moveToPositionAsync(6, 3, -8, 3, vehicle_name="UAV6")

# # 第5个无人机起飞
time.sleep(0.5)
client.moveToZAsync(-8, 2, vehicle_name="UAV5")
client.moveToPositionAsync(6, 2, -8, 2, vehicle_name="UAV5")

# # 第4个无人机起飞
time.sleep(0.5)
client.moveToZAsync(-8, 1, vehicle_name="UAV4")
client.moveToPositionAsync(6, 3, -8, 1, vehicle_name="UAV4")

# 第1/2/3个无人机起飞
time.sleep(2)
client.moveToZAsync(-8, 1, vehicle_name="UAV1")
client.moveToZAsync(-8, 1, vehicle_name="UAV2")
client.moveToZAsync(-8, 1, vehicle_name="UAV3")

# for i in range(9):
#     name = "UAV" + str(i + 1)
#     client.landAsync(vehicle_name=name)  # land
#     client.armDisarm(False, vehicle_name=name)  # lock
#     client.enableApiControl(False, vehicle_name=name)  # release control
