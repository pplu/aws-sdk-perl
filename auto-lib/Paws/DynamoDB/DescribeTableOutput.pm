# Generated from json/callresult_class.tt

package Paws::DynamoDB::DescribeTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TableDescription/;
  has Table => (is => 'ro', isa => DynamoDB_TableDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Table' => {
                            'type' => 'DynamoDB_TableDescription',
                            'class' => 'Paws::DynamoDB::TableDescription'
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

Paws::DynamoDB::DescribeTableOutput

=head1 ATTRIBUTES


=head2 Table => DynamoDB_TableDescription

The properties of the table.


=head2 _request_id => Str


=cut

1;