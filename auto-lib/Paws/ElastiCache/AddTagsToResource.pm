
package Paws::ElastiCache::AddTagsToResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::TagListMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsToResourceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::AddTagsToResource - Arguments for method AddTagsToResource on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $TagListMessage = $elasticache->AddTagsToResource(
      ResourceName => 'MyString',
      Tags         => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

    # Results:
    my $TagList = $TagListMessage->TagList;

    # Returns a L<Paws::ElastiCache::TagListMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/AddTagsToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon Resource Name (ARN) of the resource to which the tags are to
be added, for example
C<arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster> or
C<arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot>.
ElastiCache resources are I<cluster> and I<snapshot>.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of cost allocation tags to be added to this resource. A tag is a
key-value pair. A tag key must be accompanied by a tag value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

