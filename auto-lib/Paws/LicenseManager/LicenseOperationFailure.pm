package Paws::LicenseManager::LicenseOperationFailure;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has FailureTime => (is => 'ro', isa => 'Str');
  has MetadataList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Metadata]');
  has OperationName => (is => 'ro', isa => 'Str');
  has OperationRequestedBy => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceOwnerId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::LicenseOperationFailure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::LicenseOperationFailure object:

  $service_obj->Method(Att1 => { ErrorMessage => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::LicenseOperationFailure object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorMessage

=head1 DESCRIPTION

Describes the failure of a license operation.

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

  Error message.


=head2 FailureTime => Str

  Failure time.


=head2 MetadataList => ArrayRef[L<Paws::LicenseManager::Metadata>]

  Reserved.


=head2 OperationName => Str

  Name of the operation.


=head2 OperationRequestedBy => Str

  The requester is "License Manager Automated Discovery".


=head2 ResourceArn => Str

  Amazon Resource Name (ARN) of the resource.


=head2 ResourceOwnerId => Str

  ID of the AWS account that owns the resource.


=head2 ResourceType => Str

  Resource type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

