package Paws::DynamoDB::RestoreSummary;
  use Moose;
  has RestoreDateTime => (is => 'ro', isa => 'Str', required => 1);
  has RestoreInProgress => (is => 'ro', isa => 'Bool', required => 1);
  has SourceBackupArn => (is => 'ro', isa => 'Str');
  has SourceTableArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::RestoreSummary object:

  $service_obj->Method(Att1 => { RestoreDateTime => $value, ..., SourceTableArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::RestoreSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->RestoreDateTime

=head1 DESCRIPTION

Contains details for the restore.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreDateTime => Str

  Point in time or source backup time.


=head2 B<REQUIRED> RestoreInProgress => Bool

  Indicates if a restore is in progress or not.


=head2 SourceBackupArn => Str

  ARN of the backup from which the table was restored.


=head2 SourceTableArn => Str

  ARN of the source table of the backup that is being restored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

