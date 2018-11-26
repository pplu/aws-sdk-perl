
package Paws::Datasync::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::TagResource - Arguments for method TagResource on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $TagResourceResponse = $datasync->TagResource(
      ResourceArn => 'MyTaggableResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256; OPTIONAL
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource to apply the tag to.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The tags to apply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

