
package Paws::Lambda::ListEventSources {
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventSources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListEventSourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListEventSourcesResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSources - Arguments for method ListEventSources on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventSources on the 
AWS Lambda service. Use the attributes of this class
as arguments to method ListEventSources.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListEventSources.

As an example:

  $service_obj->ListEventSources(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 EventSourceArn => Str

  

The Amazon Resource Name (ARN) of the Amazon Kinesis stream.










=head2 FunctionName => Str

  

The name of the AWS Lambda function.










=head2 Marker => Str

  

Optional string. An opaque pagination token returned from a previous
C<ListEventSources> operation. If present, specifies to continue the
list from where the returning call left off.










=head2 MaxItems => Int

  

Optional integer. Specifies the maximum number of event sources to
return in response. This value must be greater than 0.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for ListEventSources in Paws::Lambda

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

