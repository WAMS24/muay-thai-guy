import "./App.css"
import { Switch, Route, useHistory } from "react-router"
import Layout from "./components/Layout/Layout"
import Login from "./screens/Login/Login"
import Signup from "./screens/Signup/Signup"
import { useState, useEffect } from "react"

import {
  loginUser,
  registerUser,
  verifyUser,
  removeToken,
} from "./services/auth"

function App() {
  const [currentUser, setCurrentUser] = useState(null)
  const history = useHistory()

  useEffect(() => {
    const handleVerify = async () => {
      const userData = await verifyUser()
      setCurrentUser(userData)
    }
    handleVerify()
  }, [])

  const handleLogin = async (loginData) => {
    const userData = await loginUser(loginData)
    setCurrentUser(userData)
    history.push("/")
  }

  const handleLogout = () => {
    setCurrentUser(null)
    localStorage.removeItem("authToken")
    removeToken()
  }

  const handleRegister = async (registerData) => {
    const userData = await registerUser(registerData)
    setCurrentUser(userData)
    history.push("/")
  }

  return (
    <div className="App">
      <Layout currentUser={currentUser} handleLogout={handleLogout}>
        <Switch>
          <Route path="/login">
            <Login handleLogin={handleLogin} />
          </Route>
          <Route path="/signup">
            <Signup handleRegister={handleRegister} />
          </Route>
        </Switch>
      </Layout>
    </div>
  )
}

export default App
