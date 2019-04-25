
package Paws::ElastiCache::RemoveTagsFromResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::TagListMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResourceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $TagListMessage = $elasticache->RemoveTagsFromResource(
      ResourceName => 'MyString',
      TagKeys      => [ 'MyString', ... ],

    );

    # Results:
    my $TagList = $TagListMessage->TagList;

    # Returns a L<Paws::ElastiCache::TagListMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/RemoveTagsFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon Resource Name (ARN) of the resource from which you want the
tags removed, for example
C<arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster> or
C<arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot>.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of C<TagKeys> identifying the tags you want removed from the
named resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

