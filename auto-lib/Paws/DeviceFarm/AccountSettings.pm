package Paws::DeviceFarm::AccountSettings;
  use Moose;
  has AwsAccountNumber => (is => 'ro', isa => 'Str', request_name => 'awsAccountNumber', traits => ['NameInRequest']);
  has DefaultJobTimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'defaultJobTimeoutMinutes', traits => ['NameInRequest']);
  has MaxJobTimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'maxJobTimeoutMinutes', traits => ['NameInRequest']);
  has MaxSlots => (is => 'ro', isa => 'Paws::DeviceFarm::MaxSlotMap', request_name => 'maxSlots', traits => ['NameInRequest']);
  has SkipAppResign => (is => 'ro', isa => 'Bool', request_name => 'skipAppResign', traits => ['NameInRequest']);
  has TrialMinutes => (is => 'ro', isa => 'Paws::DeviceFarm::TrialMinutes', request_name => 'trialMinutes', traits => ['NameInRequest']);
  has UnmeteredDevices => (is => 'ro', isa => 'Paws::DeviceFarm::PurchasedDevicesMap', request_name => 'unmeteredDevices', traits => ['NameInRequest']);
  has UnmeteredRemoteAccessDevices => (is => 'ro', isa => 'Paws::DeviceFarm::PurchasedDevicesMap', request_name => 'unmeteredRemoteAccessDevices', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::AccountSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::AccountSettings object:

  $service_obj->Method(Att1 => { AwsAccountNumber => $value, ..., UnmeteredRemoteAccessDevices => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::AccountSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountNumber

=head1 DESCRIPTION

A container for account-level settings within AWS Device Farm.

=head1 ATTRIBUTES


=head2 AwsAccountNumber => Str

  The AWS account number specified in the C<AccountSettings> container.


=head2 DefaultJobTimeoutMinutes => Int

  The default number of minutes (at the account level) a test run will
execute before it times out. Default value is 60 minutes.


=head2 MaxJobTimeoutMinutes => Int

  The maximum number of minutes a test run will execute before it times
out.


=head2 MaxSlots => L<Paws::DeviceFarm::MaxSlotMap>

  The maximum number of device slots that the AWS account can purchase.
Each maximum is expressed as an C<offering-id:number> pair, where the
C<offering-id> represents one of the IDs returned by the
C<ListOfferings> command.


=head2 SkipAppResign => Bool

  When set to C<true>, for private devices, Device Farm will not sign
your app again. For public devices, Device Farm always signs your apps
again and this parameter has no effect.

For more information about how Device Farm re-signs your app(s), see Do
you modify my app? (https://aws.amazon.com/device-farm/faq/) in the
I<AWS Device Farm FAQs>.


=head2 TrialMinutes => L<Paws::DeviceFarm::TrialMinutes>

  Information about an AWS account's usage of free trial device minutes.


=head2 UnmeteredDevices => L<Paws::DeviceFarm::PurchasedDevicesMap>

  Returns the unmetered devices you have purchased or want to purchase.


=head2 UnmeteredRemoteAccessDevices => L<Paws::DeviceFarm::PurchasedDevicesMap>

  Returns the unmetered remote access devices you have purchased or want
to purchase.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

