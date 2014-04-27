require '/home/bruno/Cabuum/Projects/SmileAPI/smile_api/lib/config.rb'
require '/home/bruno/Cabuum/Projects/SmileAPI/smile_api/lib/connection.rb'
require '/home/bruno/Cabuum/Projects/SmileAPI/smile_api/lib/message.rb'
require '/home/bruno/Cabuum/Projects/SmileAPI/smile_api/lib/message_entity.rb'
require '/home/bruno/Cabuum/Projects/SmileAPI/smile_api/lib/type_message.rb'
require '/home/bruno/Cabuum/Projects/SmileAPI/smile_api/lib/profile.rb'

profile = SmileAPI::Profile.new "joão","animated","M", Time.new("2001-01-01")
h = SmileAPI::MessageEntity.new "pt-br", ["banco", "conexão"], SmileAPI::TypeMessage::ERROR, profile

msg = SmileAPI::Message.getMessage h