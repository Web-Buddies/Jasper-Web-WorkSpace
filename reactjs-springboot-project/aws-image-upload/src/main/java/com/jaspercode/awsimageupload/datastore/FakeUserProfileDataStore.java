package com.jaspercode.awsimageupload.datastore;

import com.jaspercode.awsimageupload.profile.UserProfile;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Repository
public class FakeUserProfileDataStore {

    private static final List<UserProfile> USER_PROFILES = new ArrayList<>();

    static {
        USER_PROFILES.add(new UserProfile(UUID.fromString("802d34a9-46c3-4d5d-bf81-515f81066577"), "Jasper" , null));
        USER_PROFILES.add(new UserProfile(UUID.fromString("f11b5782-cf8d-4e75-a527-411ab00b5514"), "Kenny" , null));

    }

    public List<UserProfile> getUserProfiles(){
        return USER_PROFILES;
    }

}
