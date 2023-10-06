package com.chris_x_keith.stove_monitor_app;

import java.util.ArrayList;

import nl.infcomtec.jparticle.Cloud;
import nl.infcomtec.jparticle.Device;

public class ParticleConnection {
    Cloud cloud;
    String err = "no error";
    public ParticleConnection() {
        String accessToken = "";
        try {
            cloud = new Cloud("Bearer " + accessToken,
                    true, false);
        } catch(Exception e) {
            err = e.getMessage();
        }
    }
    public ArrayList<Device> getDevices() {
        for (Device d : cloud.devices.values()) {
            System.out.println(d.name);
        }
        return new ArrayList<>(cloud.devices.values());
    }
    public String lastDeviceName() {
        String n = "";
        if (err.equals("no error")) {
            for (Device d : cloud.devices.values()) {
                n = d.name;
            }
        } else {
            n = err;
        }
        return n;
    }
}
