
package Paws::DocDB::AddTagsToResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::AddTagsToResource - Arguments for method AddTagsToResource on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    $rds->AddTagsToResource(
      ResourceName => 'MyString',
      Tags         => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/AddTagsToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon DocumentDB resource that the tags are added to. This value
is an Amazon Resource Name (ARN).



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the Amazon DocumentDB resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

