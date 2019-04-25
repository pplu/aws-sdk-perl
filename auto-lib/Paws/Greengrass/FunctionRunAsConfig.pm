package Paws::Greengrass::FunctionRunAsConfig;
  use Moose;
  has Gid => (is => 'ro', isa => 'Int');
  has Uid => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::FunctionRunAsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionRunAsConfig object:

  $service_obj->Method(Att1 => { Gid => $value, ..., Uid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionRunAsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Gid

=head1 DESCRIPTION

Specifies the user and/or group whose permissions are used when running
the Lambda function. You can specify one or both values to override the
default values (ggc_user/ggc_group). We recommend that you avoid
running as root unless absolutely necessary to minimize the risk of
unintended changes or malicious attacks. To run as root, you must set
IsolationMode to NoContainer and you must update config.json in
greengrass-root/config to set allowFunctionsToRunAsRoot to yes.

=head1 ATTRIBUTES


=head2 Gid => Int

  The Group ID whose permissions are used to run a Lambda function.


=head2 Uid => Int

  The User ID whose permissions are used to run a Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

