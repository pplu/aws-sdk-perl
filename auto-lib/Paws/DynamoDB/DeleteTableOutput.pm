# Generated from json/callresult_class.tt

package Paws::DynamoDB::DeleteTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TableDescription/;
  has TableDescription => (is => 'ro', isa => DynamoDB_TableDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableDescription' => {
                                       'class' => 'Paws::DynamoDB::TableDescription',
                                       'type' => 'DynamoDB_TableDescription'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteTableOutput

=head1 ATTRIBUTES


=head2 TableDescription => DynamoDB_TableDescription

Represents the properties of a table.


=head2 _request_id => Str


=cut

1;