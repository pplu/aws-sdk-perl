
package Paws::DMS::AddTagsToResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::AddTagsToResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::AddTagsToResource - Arguments for method AddTagsToResource on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $AddTagsToResourceResponse = $dms->AddTagsToResource(
      ResourceArn => 'MyString',
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/AddTagsToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be
added to. AWS DMS resources include a replication instance, endpoint,
and a replication task.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::DMS::Tag>]

The tag to be assigned to the DMS resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

