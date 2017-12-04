package Paws::CognitoSync::Dataset;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has DataStorage => (is => 'ro', isa => 'Int');
  has IdentityId => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has NumRecords => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::Dataset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoSync::Dataset object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., NumRecords => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoSync::Dataset object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

A collection of data for an identity pool. An identity pool can have
multiple datasets. A dataset is per identity and can be general or
associated with a particular entity in an application (like a saved
game). Datasets are automatically created if they don't exist. Data is
synced by dataset, and a dataset can hold up to 1MB of key-value pairs.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  Date on which the dataset was created.


=head2 DatasetName => Str

  A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
'_' (underscore), '-' (dash), and '.' (dot).


=head2 DataStorage => Int

  Total size in bytes of the records in this dataset.


=head2 IdentityId => Str

  A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.


=head2 LastModifiedBy => Str

  The device that made the last change to this dataset.


=head2 LastModifiedDate => Str

  Date when the dataset was last modified.


=head2 NumRecords => Int

  Number of records in this dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

