
package Paws::DeviceFarm::CreateTestGridUrl;
  use Moose;
  has ExpiresInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresInSeconds' , required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTestGridUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateTestGridUrlResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateTestGridUrl - Arguments for method CreateTestGridUrl on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTestGridUrl on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateTestGridUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTestGridUrl.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $CreateTestGridUrlResult = $devicefarm->CreateTestGridUrl(
      ExpiresInSeconds => 1,
      ProjectArn       => 'MyDeviceFarmArn',

    );

    # Results:
    my $Expires = $CreateTestGridUrlResult->Expires;
    my $Url     = $CreateTestGridUrlResult->Url;

    # Returns a L<Paws::DeviceFarm::CreateTestGridUrlResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateTestGridUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExpiresInSeconds => Int

Lifetime, in seconds, of the URL.



=head2 B<REQUIRED> ProjectArn => Str

ARN (from CreateTestGridProject or ListTestGridProjects) to associate
with the short-term URL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTestGridUrl in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

