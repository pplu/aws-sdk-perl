
package Paws::DynamoDB::CreateGlobalTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_GlobalTableDescription/;
  has GlobalTableDescription => (is => 'ro', isa => DynamoDB_GlobalTableDescription);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'GlobalTableDescription' => {
                                             'class' => 'Paws::DynamoDB::GlobalTableDescription',
                                             'type' => 'DynamoDB_GlobalTableDescription'
                                           }
             }
}
;
      return $Params_map;
    }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CreateGlobalTableOutput

=head1 ATTRIBUTES


=head2 GlobalTableDescription => DynamoDB_GlobalTableDescription

Contains the details of the global table.


=head2 _request_id => Str


=cut

1;