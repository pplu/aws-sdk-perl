
package Paws::AppStream::CreateStreamingURL;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has SessionContext => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has Validity => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingURL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateStreamingURLResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateStreamingURL - Arguments for method CreateStreamingURL on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingURL on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method CreateStreamingURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingURL.

As an example:

  $service_obj->CreateStreamingURL(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application that must be launched after the session
starts.



=head2 B<REQUIRED> FleetName => Str

The name of the fleet.



=head2 SessionContext => Str

The session context of the streaming URL.



=head2 B<REQUIRED> StackName => Str

The name of the stack.



=head2 B<REQUIRED> UserId => Str

The ID of the user.



=head2 Validity => Int

The time that the streaming URL will be valid, in seconds. Specify a
value between 1 and 604800 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingURL in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

