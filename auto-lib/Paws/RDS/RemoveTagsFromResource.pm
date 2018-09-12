
package Paws::RDS::RemoveTagsFromResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To remove tags from a resource
    # This example removes the specified tag associated with the specified DB
    # option group.
    $rds->RemoveTagsFromResource(
      {
        'ResourceName' =>
          'arn:aws:rds:us-east-1:992648334831:og:mydboptiongroup',
        'TagKeys' => ['MyKey']
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RemoveTagsFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon RDS resource that the tags are removed from. This value is
an Amazon Resource Name (ARN). For information about creating an ARN,
see Constructing an ARN for Amazon RDS
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide.>



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag key (name) of the tag to be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

