
package Paws::RDS::ListTagsForResource;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::TagListMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
   # To list information about tags associated with a resource
   # This example lists information about all tags associated with the specified
   # DB option group.
    my $TagListMessage = $rds->ListTagsForResource(
      {
        'ResourceName' =>
          'arn:aws:rds:us-east-1:992648334831:og:mymysqloptiongroup'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 B<REQUIRED> ResourceName => Str

The Amazon RDS resource with tags to be listed. This value is an Amazon
Resource Name (ARN). For information about creating an ARN, see
Constructing an ARN for Amazon RDS
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

