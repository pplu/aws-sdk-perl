package Paws::DynamoDB::ContinuousBackupsDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBPointInTimeRecoveryDescription/;
  has ContinuousBackupsStatus => (is => 'ro', isa => Str, required => 1);
  has PointInTimeRecoveryDescription => (is => 'ro', isa => PawsDynamoDBPointInTimeRecoveryDescription);

  sub params_map {
    my $params1 = {
             'types' => {
                          'ContinuousBackupsStatus' => {
                                                         'type' => 'Str'
                                                       },
                          'PointInTimeRecoveryDescription' => {
                                                                'class' => 'Paws::DynamoDB::PointInTimeRecoveryDescription',
                                                                'type' => 'PawsDynamoDBPointInTimeRecoveryDescription'
                                                              }
                        }
           };

    return $params1;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ContinuousBackupsDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ContinuousBackupsDescription object:

  $service_obj->Method(Att1 => { ContinuousBackupsStatus => $value, ..., PointInTimeRecoveryDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ContinuousBackupsDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ContinuousBackupsStatus

=head1 DESCRIPTION

Represents the continuous backups and point in time recovery settings
on the table.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContinuousBackupsStatus => Str

  C<ContinuousBackupsStatus> can be one of the following states: ENABLED,
DISABLED


=head2 PointInTimeRecoveryDescription => PawsDynamoDBPointInTimeRecoveryDescription

  The description of the point in time recovery settings applied to the
table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

