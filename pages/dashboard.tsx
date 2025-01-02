export default function Dashboard() {
  const user = {
    username: "test_user",
    password: "password123",
  };

  const currentOrders = ["Order #1", "Order #2"];
  const previousOrders = ["Order #A", "Order #B"];

  const hasPreviousOrders = true;

  return (
    <div>
      <h1 id="dashboard-title">Dashboard</h1>
      <p id="username-display">Username: {user.username}</p>
      <p id="password-display">Password: {user.password}</p>

      <h2>Current Orders</h2>
      <ul>
        {currentOrders.map((order, index) => (
          <li key={index}>{order}</li>
        ))}
      </ul>
      <br />
      <br />
      {hasPreviousOrders && (
        <>
          <h2>Previous Orders</h2>
          <ul>
            {previousOrders.map((order, index) => (
              <li key={index}>{order}</li>
            ))}
          </ul>
        </>
      )}
    </div>
  );
}
