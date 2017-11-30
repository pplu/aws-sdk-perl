package Paws::DynamoDB::BackupDescription;
  use Moose;
  has BackupDetails => (is => 'ro', isa => 'Paws::DynamoDB::BackupDetails');
  has SourceTableDetails => (is => 'ro', isa => 'Paws::DynamoDB::SourceTableDetails');
  has SourceTableFeatureDetails => (is => 'ro', isa => 'Paws::DynamoDB::SourceTableFeatureDetails');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BackupDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::BackupDescription object:

  $service_obj->Method(Att1 => { BackupDetails => $value, ..., SourceTableFeatureDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::BackupDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupDetails

=head1 DESCRIPTION

Contains the description of the backup created for the table.

=head1 ATTRIBUTES


=head2 BackupDetails => L<Paws::DynamoDB::BackupDetails>

  Contains the details of the backup created for the table.


=head2 SourceTableDetails => L<Paws::DynamoDB::SourceTableDetails>

  Contains the details of the table when the backup was created.


=head2 SourceTableFeatureDetails => L<Paws::DynamoDB::SourceTableFeatureDetails>

  Contains the details of the features enabled on the table when the
backup was created. For example, LSIs, GSIs, streams, TTL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

