package Paws::IoT::LoggingOptionsPayload;
  use Moose;
  has logLevel => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::LoggingOptionsPayload

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::LoggingOptionsPayload object:

  $service_obj->Method(Att1 => { logLevel => $value, ..., roleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::LoggingOptionsPayload object:

  $result = $service_obj->Method(...);
  $result->Att1->logLevel

=head1 ATTRIBUTES

=head2 logLevel => Str

  

The logging level.










=head2 B<REQUIRED> roleArn => Str

  

The ARN of the IAM role that grants access.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

