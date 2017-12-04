package Paws::ApiGateway::SdkConfigurationProperty;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Str', request_name => 'defaultValue', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FriendlyName => (is => 'ro', isa => 'Str', request_name => 'friendlyName', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Required => (is => 'ro', isa => 'Bool', request_name => 'required', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::SdkConfigurationProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::SdkConfigurationProperty object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., Required => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::SdkConfigurationProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

A configuration property of an SDK type.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

  The default value of an SdkType configuration property.


=head2 Description => Str

  The description of an SdkType configuration property.


=head2 FriendlyName => Str

  The user-friendly name of an SdkType configuration property.


=head2 Name => Str

  The name of a an SdkType configuration property.


=head2 Required => Bool

  A boolean flag of an SdkType configuration property to indicate if the
associated SDK configuration property is required (C<true>) or not
(C<false>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

