
package Paws::DynamoDB::DescribeContinuousBackupsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $ContinuousBackupsDescription = class_type 'Paws::DynamoDB::ContinuousBackupsDescription';
  
  has ContinuousBackupsDescription => (is => 'ro', isa => $ContinuousBackupsDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'ContinuousBackupsDescription' => {
                                                              'class' => 'Paws::DynamoDB::ContinuousBackupsDescription',
                                                              'type' => '$ContinuousBackupsDescription'
                                                            }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContinuousBackupsOutput

=head1 ATTRIBUTES


=head2 ContinuousBackupsDescription => $ContinuousBackupsDescription

Represents the continuous backups and point in time recovery settings
on the table.


=head2 _request_id => Str


=cut

1;