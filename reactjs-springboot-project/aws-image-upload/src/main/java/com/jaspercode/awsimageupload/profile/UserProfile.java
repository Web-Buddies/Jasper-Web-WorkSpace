package com.jaspercode.awsimageupload.profile;

import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

public class UserProfile {

    private final UUID userProfileId;
    private final String userName;
    private String userProfileImageLink; // S3 key


    public UserProfile(UUID userProfileId,
                       String userName,
                       String userProfileImageLink) {

        this.userProfileId = userProfileId;
        this.userName = userName;
        this.userProfileImageLink = userProfileImageLink;

    }

    public UUID getUserProfileId() {
        return userProfileId;
    }



    public String getUserName() {
        return userName;
    }




    // NULL 값을 세팅 해줄 수 있기 떄문에 getter에 양념을 가미 해줌

    public Optional<String> getUserProfileImageLink() {
        return Optional.ofNullable(userProfileImageLink);
    }

    public void setUserProfileImageLink(String userProfileImageLink) {
        this.userProfileImageLink = userProfileImageLink;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserProfile)) return false;
        UserProfile that = (UserProfile) o;

        // Null 체크를 위해서 약간의 코드 수정 !!
        // Objects.equals() 를 들어가게 되면
        //        public static boolean equals(Object a , Object b){
        //            return(a == b) || (a != null && a.equals(b));
        //        }
        // 의 형식으로 들어가 있는 것을 볼 수 있다. 즉 null 체크를 해준다는 거지!
        return Objects.equals(userProfileId,that.userProfileId) &&
                Objects.equals(userName , that.userName) &&
                Objects.equals(userProfileImageLink , that.userProfileImageLink);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userProfileId, userName, userProfileImageLink);
    }
}
