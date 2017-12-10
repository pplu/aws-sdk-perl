package Paws::CodePipeline::ActionConfigurationProperty;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Key => (is => 'ro', isa => 'Bool', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Queryable => (is => 'ro', isa => 'Bool', request_name => 'queryable', traits => ['NameInRequest']);
  has Required => (is => 'ro', isa => 'Bool', request_name => 'required', traits => ['NameInRequest'], required => 1);
  has Secret => (is => 'ro', isa => 'Bool', request_name => 'secret', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionConfigurationProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionConfigurationProperty object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionConfigurationProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Represents information about an action configuration property.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the action configuration property that will be
displayed to users.


=head2 B<REQUIRED> Key => Bool

  Whether the configuration property is a key.


=head2 B<REQUIRED> Name => Str

  The name of the action configuration property.


=head2 Queryable => Bool

  Indicates that the property will be used in conjunction with
PollForJobs. When creating a custom action, an action can have up to
one queryable property. If it has one, that property must be both
required and not secret.

If you create a pipeline with a custom action type, and that custom
action contains a queryable property, the value for that configuration
property is subject to additional restrictions. The value must be less
than or equal to twenty (20) characters. The value can contain only
alphanumeric characters, underscores, and hyphens.


=head2 B<REQUIRED> Required => Bool

  Whether the configuration property is a required value.


=head2 B<REQUIRED> Secret => Bool

  Whether the configuration property is secret. Secrets are hidden from
all calls except for GetJobDetails, GetThirdPartyJobDetails,
PollForJobs, and PollForThirdPartyJobs.

When updating a pipeline, passing * * * * * without changing any other
values of the action will preserve the prior value of the secret.


=head2 Type => Str

  The type of the configuration property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

