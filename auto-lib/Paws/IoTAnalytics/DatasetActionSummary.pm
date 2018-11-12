package Paws::IoTAnalytics::DatasetActionSummary;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest']);
  has ActionType => (is => 'ro', isa => 'Str', request_name => 'actionType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetActionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetActionSummary object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., ActionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetActionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActionName => Str

  The name of the action which automatically creates the data set's
contents.


=head2 ActionType => Str

  The type of action by which the data set's contents are automatically
created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

