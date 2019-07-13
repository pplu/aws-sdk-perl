package Paws::AppSync::FunctionConfiguration;
  use Moose;
  has DataSourceName => (is => 'ro', isa => 'Str', request_name => 'dataSourceName', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FunctionArn => (is => 'ro', isa => 'Str', request_name => 'functionArn', traits => ['NameInRequest']);
  has FunctionId => (is => 'ro', isa => 'Str', request_name => 'functionId', traits => ['NameInRequest']);
  has FunctionVersion => (is => 'ro', isa => 'Str', request_name => 'functionVersion', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RequestMappingTemplate => (is => 'ro', isa => 'Str', request_name => 'requestMappingTemplate', traits => ['NameInRequest']);
  has ResponseMappingTemplate => (is => 'ro', isa => 'Str', request_name => 'responseMappingTemplate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::FunctionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::FunctionConfiguration object:

  $service_obj->Method(Att1 => { DataSourceName => $value, ..., ResponseMappingTemplate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::FunctionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceName

=head1 DESCRIPTION

A function is a reusable entity. Multiple functions can be used to
compose the resolver logic.

=head1 ATTRIBUTES


=head2 DataSourceName => Str

  The name of the C<DataSource>.


=head2 Description => Str

  The C<Function> description.


=head2 FunctionArn => Str

  The ARN of the C<Function> object.


=head2 FunctionId => Str

  A unique ID representing the C<Function> object.


=head2 FunctionVersion => Str

  The version of the request mapping template. Currently only the
2018-05-29 version of the template is supported.


=head2 Name => Str

  The name of the C<Function> object.


=head2 RequestMappingTemplate => Str

  The C<Function> request mapping template. Functions support only the
2018-05-29 version of the request mapping template.


=head2 ResponseMappingTemplate => Str

  The C<Function> response mapping template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

