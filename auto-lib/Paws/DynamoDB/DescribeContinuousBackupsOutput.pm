
package Paws::DynamoDB::DescribeContinuousBackupsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_ContinuousBackupsDescription/;
  has ContinuousBackupsDescription => (is => 'ro', isa => DynamoDB_ContinuousBackupsDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'ContinuousBackupsDescription' => {
                                                              'class' => 'Paws::DynamoDB::ContinuousBackupsDescription',
                                                              'type' => 'DynamoDB_ContinuousBackupsDescription'
                                                            }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContinuousBackupsOutput

=head1 ATTRIBUTES


=head2 ContinuousBackupsDescription => DynamoDB_ContinuousBackupsDescription

Represents the continuous backups and point in time recovery settings
on the table.


=head2 _request_id => Str


=cut

1;