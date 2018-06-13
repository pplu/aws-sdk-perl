
package Paws::EMR::RemoveTags;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::RemoveTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RemoveTags - Arguments for method RemoveTags on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTags on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method RemoveTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTags.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $RemoveTagsOutput = $elasticmapreduce->RemoveTags(
      ResourceId => 'MyResourceId',
      TagKeys    => [ 'MyString', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/RemoveTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The Amazon EMR resource identifier from which tags will be removed.
This value must be a cluster identifier.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag keys to remove from a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTags in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

