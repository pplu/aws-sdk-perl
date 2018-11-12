package Paws::MQ::DescribeConfigurationRevisionOutput;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', request_name => 'configurationId', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Data => (is => 'ro', isa => 'Str', request_name => 'data', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeConfigurationRevisionOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::DescribeConfigurationRevisionOutput object:

  $service_obj->Method(Att1 => { ConfigurationId => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::DescribeConfigurationRevisionOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationId

=head1 DESCRIPTION

Returns the specified configuration revision for the specified
configuration.

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

  Required. The unique ID that Amazon MQ generates for the configuration.


=head2 Created => Str

  Required. The date and time of the configuration.


=head2 Data => Str

  Required. The base64-encoded XML configuration.


=head2 Description => Str

  The description of the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

