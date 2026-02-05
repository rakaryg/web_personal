import Navbar from "@/components/Navbar";
import Hero from "@/components/Hero";
import Skills from "@/components/Skills";
import Footer from "@/components/Footer";
import Books from "@/components/Books";

export default function Home() {
  return (
    <main className="min-h-screen bg-[#030014] text-white selection:bg-purple-500 selection:text-white">
      <Navbar />
      <Hero />
      <Skills />
      <Books />
      <Footer />
    </main>
  );
}
