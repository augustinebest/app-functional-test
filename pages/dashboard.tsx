export default function Dashboard() {
  const user = {
    username: "test_user",
    password: "password123",
  };

  return (
    <div>
      <h1 id="dashboard-title">Dashboard</h1>
      <p id="username-display">Username: {user.username}</p>
      <p id="password-display">Password: {user.password}</p>
    </div>
  );
}
