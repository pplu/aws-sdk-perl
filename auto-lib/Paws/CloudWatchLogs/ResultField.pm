package Paws::CloudWatchLogs::ResultField;
  use Moose;
  has Field => (is => 'ro', isa => 'Str', request_name => 'field', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ResultField

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ResultField object:

  $service_obj->Method(Att1 => { Field => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ResultField object:

  $result = $service_obj->Method(...);
  $result->Att1->Field

=head1 DESCRIPTION

Contains one field from one log event returned by a CloudWatch Logs
Insights query, along with the value of that field.

=head1 ATTRIBUTES


=head2 Field => Str

  The log event field.


=head2 Value => Str

  The value of this field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

