
package Paws::DynamoDB::UpdateGlobalTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $GlobalTableDescription = class_type 'Paws::DynamoDB::GlobalTableDescription';
  
  has GlobalTableDescription => (is => 'ro', isa => $GlobalTableDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'GlobalTableDescription' => {
                                                        'class' => 'Paws::DynamoDB::GlobalTableDescription',
                                                        'type' => '$GlobalTableDescription'
                                                      }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalTableOutput

=head1 ATTRIBUTES


=head2 GlobalTableDescription => $GlobalTableDescription

Contains the details of the global table.


=head2 _request_id => Str


=cut

1;