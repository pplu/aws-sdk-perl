
package Paws::WorkDocs::UpdateUser;
  use Moose;
  has GivenName => (is => 'ro', isa => 'Str');
  has Locale => (is => 'ro', isa => 'Str');
  has StorageRule => (is => 'ro', isa => 'Paws::WorkDocs::StorageRuleType');
  has Surname => (is => 'ro', isa => 'Str');
  has TimeZoneId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UserId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/users/{UserId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::UpdateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UpdateUser - Arguments for method UpdateUser on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

As an example:

  $service_obj->UpdateUser(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 GivenName => Str

The given name of the user.



=head2 Locale => Str

The locale of the user.

Valid values are: C<"en">, C<"fr">, C<"ko">, C<"de">, C<"es">, C<"ja">, C<"ru">, C<"zh_CN">, C<"zh_TW">, C<"pt_BR">, C<"default">

=head2 StorageRule => L<Paws::WorkDocs::StorageRuleType>

The amount of storage for the user.



=head2 Surname => Str

The surname of the user.



=head2 TimeZoneId => Str

The time zone ID of the user.



=head2 Type => Str

The type of the user.

Valid values are: C<"USER">, C<"ADMIN">

=head2 B<REQUIRED> UserId => Str

The ID of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

