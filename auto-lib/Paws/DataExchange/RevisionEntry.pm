package Paws::DataExchange::RevisionEntry;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', required => 1);
  has Finalized => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has SourceId => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::RevisionEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::RevisionEntry object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::RevisionEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A revision is a container for one or more assets.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN for the revision.


=head2 Comment => Str

  An optional comment about the revision.


=head2 B<REQUIRED> CreatedAt => Str

  The date and time that the revision was created, in ISO 8601 format.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this revision.


=head2 Finalized => Bool

  To publish a revision to a data set in a product, the revision must
first be finalized. Finalizing a revision tells AWS Data Exchange that
your changes to the assets in the revision are complete. After it's in
this read-only state, you can publish the revision to your products.

Finalized revisions can be published through the AWS Data Exchange
console or the AWS Marketplace Catalog API, using the StartChangeSet
AWS Marketplace Catalog API action. When using the API, revisions are
uniquely identified by their ARN.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the revision.


=head2 SourceId => Str

  The revision ID of the owned revision corresponding to the entitled
revision being viewed. This parameter is returned when a revision owner
is viewing the entitled copy of its owned revision.


=head2 B<REQUIRED> UpdatedAt => Str

  The date and time that the revision was last updated, in ISO 8601
format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

