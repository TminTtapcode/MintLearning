import React from 'react';
import { Outlet, NavLink } from 'react-router-dom';
import { useAuth } from '../AuthContext';

export default function AppShell() {
    const { user, logout } = useAuth();

    const navStyle = ({ isActive }: { isActive: boolean }) => ({
        padding: '0.5rem 1rem',
        textDecoration: 'none',
        color: isActive ? 'white' : '#ccc',
        backgroundColor: isActive ? '#333' : 'transparent',
        borderRadius: '4px',
        marginRight: '0.5rem'
    });

    return (
        <div>
            <header style={{ padding: '1rem', backgroundColor: '#1e1e1e', color: 'white', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <nav>
                    <NavLink to="/explore" style={navStyle}>Explore</NavLink>
                    <NavLink to="/today" style={navStyle}>Today</NavLink>
                    <NavLink to="/roadmap" style={navStyle}>Roadmap</NavLink>
                    <NavLink to="/learn" style={navStyle}>Learn</NavLink>
                    <NavLink to="/review" style={navStyle}>Review</NavLink>
                    <NavLink to="/progress" style={navStyle}>Progress</NavLink>
                </nav>
                <div>
                    <span style={{ marginRight: '1rem' }}>{user?.displayName}</span>
                    <button onClick={logout} style={{ padding: '0.25rem 0.5rem' }}>Logout</button>
                </div>
            </header>
            <main style={{ padding: '2rem' }}>
                <Outlet />
            </main>
        </div>
    );
}
