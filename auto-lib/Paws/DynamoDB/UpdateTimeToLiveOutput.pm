
package Paws::DynamoDB::UpdateTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $TimeToLiveSpecification = class_type 'Paws::DynamoDB::TimeToLiveSpecification';
  
  has TimeToLiveSpecification => (is => 'ro', isa => $TimeToLiveSpecification);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveSpecification' => {
                                                         'class' => 'Paws::DynamoDB::TimeToLiveSpecification',
                                                         'type' => '$TimeToLiveSpecification'
                                                       }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveSpecification => $TimeToLiveSpecification

Represents the output of an C<UpdateTimeToLive> operation.


=head2 _request_id => Str


=cut

1;