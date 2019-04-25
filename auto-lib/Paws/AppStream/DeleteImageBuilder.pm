
package Paws::AppStream::DeleteImageBuilder;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImageBuilder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DeleteImageBuilderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DeleteImageBuilder - Arguments for method DeleteImageBuilder on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImageBuilder on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DeleteImageBuilder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImageBuilder.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DeleteImageBuilderResult = $appstream2->DeleteImageBuilder(
      Name => 'MyName',

    );

    # Results:
    my $ImageBuilder = $DeleteImageBuilderResult->ImageBuilder;

    # Returns a L<Paws::AppStream::DeleteImageBuilderResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DeleteImageBuilder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the image builder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImageBuilder in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

