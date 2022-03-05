import Dashboard from './Dashboard'
import Login from './Login'

export default function Home({user, handleSetUser, handleLogout}) {
    
    return (
        <div>
            <h1>Home</h1>
            { user ? <Dashboard user={user} handleLogout={handleLogout}/> : <Login handleSetUser={handleSetUser} />}
        </div>
    )
}