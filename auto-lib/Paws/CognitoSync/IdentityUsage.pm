package Paws::CognitoSync::IdentityUsage;
  use Moose;
  has DatasetCount => (is => 'ro', isa => 'Int');
  has DataStorage => (is => 'ro', isa => 'Int');
  has IdentityId => (is => 'ro', isa => 'Str');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::IdentityUsage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoSync::IdentityUsage object:

  $service_obj->Method(Att1 => { DatasetCount => $value, ..., LastModifiedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoSync::IdentityUsage object:

  $result = $service_obj->Method(...);
  $result->Att1->DatasetCount

=head1 DESCRIPTION

Usage information for the identity.

=head1 ATTRIBUTES


=head2 DatasetCount => Int

  Number of datasets for the identity.


=head2 DataStorage => Int

  Total data storage for this identity.


=head2 IdentityId => Str

  A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.


=head2 IdentityPoolId => Str

  A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.


=head2 LastModifiedDate => Str

  Date on which the identity was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

