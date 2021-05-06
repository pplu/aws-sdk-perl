
package Paws::MediaStore::UntagResource;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::UntagResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::UntagResource - Arguments for method UntagResource on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $UntagResourceOutput = $mediastore->UntagResource(
      Resource => 'MyContainerARN',
      TagKeys  => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The Amazon Resource Name (ARN) for the container.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A comma-separated list of keys for tags that you want to remove from
the container. For example, if your container has two tags
(customer:CompanyA and priority:High) and you want to remove one of the
tags (priority:High), you specify the key for the tag that you want to
remove (priority).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

