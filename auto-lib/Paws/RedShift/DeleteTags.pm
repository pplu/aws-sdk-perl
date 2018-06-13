
package Paws::RedShift::DeleteTags;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteTags - Arguments for method DeleteTags on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTags on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTags.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->DeleteTags(
      ResourceName => 'MyString',
      TagKeys      => [ 'MyString', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon Resource Name (ARN) from which you want to remove the tag or
tags. For example, C<arn:aws:redshift:us-east-1:123456789:cluster:t1>.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag key that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTags in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

