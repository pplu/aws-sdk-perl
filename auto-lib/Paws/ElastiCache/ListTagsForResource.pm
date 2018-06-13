
package Paws::ElastiCache::ListTagsForResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::TagListMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $TagListMessage = $elasticache->ListTagsForResource(
      ResourceName => 'MyString',

    );

    # Results:
    my $TagList = $TagListMessage->TagList;

    # Returns a L<Paws::ElastiCache::TagListMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon Resource Name (ARN) of the resource for which you want the
list of tags, for example
C<arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster> or
C<arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot>.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

