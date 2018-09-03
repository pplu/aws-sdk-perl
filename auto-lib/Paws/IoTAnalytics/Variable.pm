package Paws::IoTAnalytics::Variable;
  use Moose;
  has DatasetContentVersionValue => (is => 'ro', isa => 'Paws::IoTAnalytics::DatasetContentVersionValue', request_name => 'datasetContentVersionValue', traits => ['NameInRequest']);
  has DoubleValue => (is => 'ro', isa => 'Num', request_name => 'doubleValue', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has OutputFileUriValue => (is => 'ro', isa => 'Paws::IoTAnalytics::OutputFileUriValue', request_name => 'outputFileUriValue', traits => ['NameInRequest']);
  has StringValue => (is => 'ro', isa => 'Str', request_name => 'stringValue', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Variable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Variable object:

  $service_obj->Method(Att1 => { DatasetContentVersionValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Variable object:

  $result = $service_obj->Method(...);
  $result->Att1->DatasetContentVersionValue

=head1 DESCRIPTION

An instance of a variable to be passed to the "containerAction"
execution. Each variable must have a name and a value given by one of
"stringValue", "datasetContentVersionValue", or "outputFileUriValue".

=head1 ATTRIBUTES


=head2 DatasetContentVersionValue => L<Paws::IoTAnalytics::DatasetContentVersionValue>

  The value of the variable as a structure that specifies a data set
content version.


=head2 DoubleValue => Num

  The value of the variable as a double (numeric).


=head2 B<REQUIRED> Name => Str

  The name of the variable.


=head2 OutputFileUriValue => L<Paws::IoTAnalytics::OutputFileUriValue>

  The value of the variable as a structure that specifies an output file
URI.


=head2 StringValue => Str

  The value of the variable as a string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

