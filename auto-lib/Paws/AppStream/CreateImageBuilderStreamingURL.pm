
package Paws::AppStream::CreateImageBuilderStreamingURL;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Validity => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImageBuilderStreamingURL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateImageBuilderStreamingURLResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateImageBuilderStreamingURL - Arguments for method CreateImageBuilderStreamingURL on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImageBuilderStreamingURL on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateImageBuilderStreamingURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImageBuilderStreamingURL.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateImageBuilderStreamingURLResult =
      $appstream2->CreateImageBuilderStreamingURL(
      Name     => 'MyString',
      Validity => 1,            # OPTIONAL
      );

    # Results:
    my $Expires      = $CreateImageBuilderStreamingURLResult->Expires;
    my $StreamingURL = $CreateImageBuilderStreamingURLResult->StreamingURL;

    # Returns a L<Paws::AppStream::CreateImageBuilderStreamingURLResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateImageBuilderStreamingURL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the image builder.



=head2 Validity => Int

The time that the streaming URL will be valid, in seconds. Specify a
value between 1 and 604800 seconds. The default is 3600 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageBuilderStreamingURL in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

