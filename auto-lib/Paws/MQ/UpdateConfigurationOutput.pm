package Paws::MQ::UpdateConfigurationOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LatestRevision => (is => 'ro', isa => 'Paws::MQ::ConfigurationRevision', request_name => 'latestRevision', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::MQ::SanitizationWarning]', request_name => 'warnings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateConfigurationOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::UpdateConfigurationOutput object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Warnings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::UpdateConfigurationOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns information about the updated configuration.

=head1 ATTRIBUTES


=head2 Arn => Str

  Required. The Amazon Resource Name (ARN) of the configuration.


=head2 Created => Str

  Required. The date and time of the configuration.


=head2 Id => Str

  Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => L<Paws::MQ::ConfigurationRevision>

  The latest revision of the configuration.


=head2 Name => Str

  Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 Warnings => ArrayRef[L<Paws::MQ::SanitizationWarning>]

  The list of the first 20 warnings about the configuration XML elements
or attributes that were sanitized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

