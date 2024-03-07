class CreatePolicyWorker
  include Sneakers::Worker

  from_queue 'create_policy'

  def work(msg)
    p 'Recebeu mensagem'
    p 'Deu certo'
    p '-----------------------------------------------------------------'
    p msg
    p '-----------------------------------------------------------------'
    ack!
  end
end
