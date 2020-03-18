package Paws::DataExchange::DataSetEntry;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssetType => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Origin => (is => 'ro', isa => 'Str', required => 1);
  has OriginDetails => (is => 'ro', isa => 'Paws::DataExchange::OriginDetails');
  has SourceId => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::DataSetEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::DataSetEntry object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::DataSetEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A data set is an AWS resource with one or more revisions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN for the data set.


=head2 B<REQUIRED> AssetType => Str

  The type of file your data is stored in. Currently, the supported asset
type is S3_SNAPSHOT.


=head2 B<REQUIRED> CreatedAt => Str

  The date and time that the data set was created, in ISO 8601 format.


=head2 B<REQUIRED> Description => Str

  The description for the data set.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the data set.


=head2 B<REQUIRED> Name => Str

  The name of the data set.


=head2 B<REQUIRED> Origin => Str

  A property that defines the data set as OWNED by the account (for
providers) or ENTITLED to the account (for subscribers).


=head2 OriginDetails => L<Paws::DataExchange::OriginDetails>

  If the origin of this data set is ENTITLED, includes the details for
the product on AWS Marketplace.


=head2 SourceId => Str

  The data set ID of the owned data set corresponding to the entitled
data set being viewed. This parameter is returned when a data set owner
is viewing the entitled copy of its owned data set.


=head2 B<REQUIRED> UpdatedAt => Str

  The date and time that the data set was last updated, in ISO 8601
format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

