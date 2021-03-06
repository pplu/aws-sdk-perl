# Generated by default/object.tt
package Paws::IoT::ProvisioningHook;
  use Moose;
  has PayloadVersion => (is => 'ro', isa => 'Str', request_name => 'payloadVersion', traits => ['NameInRequest']);
  has TargetArn => (is => 'ro', isa => 'Str', request_name => 'targetArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ProvisioningHook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ProvisioningHook object:

  $service_obj->Method(Att1 => { PayloadVersion => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ProvisioningHook object:

  $result = $service_obj->Method(...);
  $result->Att1->PayloadVersion

=head1 DESCRIPTION

Structure that contains C<payloadVersion> and C<targetArn>.

=head1 ATTRIBUTES


=head2 PayloadVersion => Str

The payload that was sent to the target function.

I<Note:> Only Lambda functions are currently supported.


=head2 B<REQUIRED> TargetArn => Str

The ARN of the target function.

I<Note:> Only Lambda functions are currently supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

