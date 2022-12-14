import { useState, useEffect } from 'react';

const TopicForm = ({ addTopic, id, title, body, updateTopic, setEdit }) => {
  const [topic, setTopic] = useState({ title: '', body: '' })

  useEffect( () => {
    if (id) {
      setTopic({ title, body })
    }
  }, [])

  const handleSubmit = (e) => {
    e.preventDefault()
    if (id) {
      updateTopic(id, topic)
      setEdit(false)
    } else {
      addTopic(topic)
    }
    setTopic({ title: '', body: '' })
  }

  return (
    <>
      <h1>{id ? 'Update' : 'Create'} Topic</h1>
      <form onSubmit={handleSubmit}>
        <label>Title</label>
        <input
          name='title'
          value={topic.title}
          onChange={(e) => setTopic({...topic, title: e.target.value })}
          required
        />
        <label>Body</label>
        <textarea
          name='body'
          value={topic.body}
          onChange={(e) => setTopic({...topic, body: e.target.value })}
          required
        ></textarea>
        <button type='submit'>Submit</button>
      </form>
    </>
  )
}

export default TopicForm;