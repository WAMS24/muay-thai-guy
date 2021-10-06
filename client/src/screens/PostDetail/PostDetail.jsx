import React, { useEffect, useState } from "react"
import { getOnePost } from "../../services/posts"
import { useParams } from "react-router-dom"
import { Link } from "react-router-dom"

export default function PostDetail(props) {
  const [post, setPost] = useState({})
  const [isLoaded, setLoaded] = useState(false)
  const { id } = useParams()

  useEffect(() => {
    console.log(id)
    const fetchPost = async () => {
      const postData = await getOnePost(id)
      console.log(postData)
      setLoaded(true)
      setPost(postData)
    }
    fetchPost()
  }, [id])

  return (
    <div className="post-page">
      <div className="post-title">
        <h1>{post.title}</h1>
      </div>
      <div className="post-content">
        <p>{post.content}</p>
      </div>
      <div className="post-crud">
        {props.currentUser !== null ? (
          <div className="edit-delete">
            <Link to={`/posts/${id}/edit`}>
              <button>Edit</button>
            </Link>
            <button onClick={() => props.handlePostDelete(post.id)}>
              Delete
            </button>
          </div>
        ) : null}
      </div>
    </div>
  )
}
