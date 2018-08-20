
package Paws::DeviceFarm::UpdateUpload;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType' );
  has EditContent => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'editContent' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUpload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateUploadResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateUpload - Arguments for method UpdateUpload on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUpload on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUpload.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $UpdateUploadResult = $devicefarm->UpdateUpload(
      Arn         => 'MyAmazonResourceName',
      ContentType => 'MyContentType',          # OPTIONAL
      EditContent => 1,                        # OPTIONAL
      Name        => 'MyName',                 # OPTIONAL
    );

    # Results:
    my $Upload = $UpdateUploadResult->Upload;

    # Returns a L<Paws::DeviceFarm::UpdateUploadResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the uploaded test spec.



=head2 ContentType => Str

The upload's content type (for example, "application/x-yaml").



=head2 EditContent => Bool

Set to true if the YAML file has changed and needs to be updated;
otherwise, set to false.



=head2 Name => Str

The upload's test spec file name. The name should not contain the '/'
character. The test spec file name must end with the C<.yaml> or
C<.yml> file extension.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUpload in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

