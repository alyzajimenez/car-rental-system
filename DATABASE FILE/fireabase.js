// Import necessary functions from the Firebase SDKs
import { initializeApp } from "firebase/app";
import { getAuth, sendSignInLinkToEmail, isSignInWithEmailLink, signInWithEmailLink } from "firebase/auth";

// Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyB0XNNj-XQEdJSwY2JqLRuDdAHd2tMiv1s",
  authDomain: "rental-b76a5.firebaseapp.com",
  projectId: "rental-b76a5",
  storageBucket: "rental-b76a5.firebasestorage.app",
  messagingSenderId: "1010521663816",
  appId: "1:1010521663816:web:a6c13b4456bee8eb61eb7d",
  measurementId: "G-DFMVLZD67G"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);

// Export auth for use in other files
export { auth, sendSignInLinkToEmail, isSignInWithEmailLink, signInWithEmailLink };
